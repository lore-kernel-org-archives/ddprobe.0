Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35F97E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646417184;
	h=To:Subject:From:Message-Id:Date;
	bh=YnVPT/kk4GTQJIG7VBxNrIhulckqY11FDj9QehmilYs=;
	b=cW75kUKKpH8mAlbX2HjblUSr6OYaIe+pKpk05jBXaVB168r6AwAwlYgloNc8diMO
	zEeX3+aacVGOPqJDcM1MbB4YTIG0FIgbFVF4R4LDr85s1Vm1NbyxBeS6EswVLQ7lcI+
	9QRVRJlamqtxYpHMIZHVkW2ctSz9Gclu0J3UBVQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646417184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YnVPT/kk4GTQJIG7VBxNrIhulckqY11FDj9QehmilYs=;
	b=Fkyz5clOBhxVhbbj0VsIKNyjpAPy5aFmOYgydmRkQvJwSIy+iNBwzDHXGE19z5hj
	7bpcm1Ci0WLvP+9nEFqCMWBn13J/7D+GlZCyl5y5cNfEHLwWPEXELkperJAlIm1ycnk
	Cwk/iYCqAwm79nsSGOjgoiwYX2cSAeF01P9mC/P8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f561c87e0-b6ff094a-0343-49a7-af02-48707bdf59b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fdc89653eb6eb2fea342a59f6389e27ec6afc4f3eb01a2cefa92b77163826d1
Date: Fri, 4 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646417184
