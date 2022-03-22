Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D5B6453
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647985284;
	h=To:Subject:From:Message-Id:Date;
	bh=eEfsJatG9lYhGOp2xpr570Ima6y+oQ07kVDr9KZINXg=;
	b=UKKVrDKQNHxU+pWkET4AkiQdNKtsYGbWKakcfVNWapDj9ElftXqpR2Jv9cHAqc0T
	e7XZ5xECiTFyQuJ45DjBYFGFFWri/C2HCXL4zYxra9b3DCl0vrjoDYfNJcIUcS740aP
	VUwddRRXwuWC7wptbUIdZX56AREd6NWFjmBbAtp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647985284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eEfsJatG9lYhGOp2xpr570Ima6y+oQ07kVDr9KZINXg=;
	b=Daf0WetG2i43Aw6TiSjp+OxwSSGBNB84JVbc/XtLZFZRMZUNO36HLlqE/Z9O9eCb
	oaCwm/tiVss3rKtCYkUvpyrepWsRfsRKVvEGBL3ED1NPTHoQWaWQzcTVLBYjLCc0wKc
	mO/ZmxG1db/H33G9R8pzC1IDnB3GYGBDpLT5NBNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb393d6b3-efadcc12-f5f3-4edf-8b4d-d674114952bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a05246476da410ab09aa6de139732037081959f0ce55ed23ec63672572fb1aa0
Date: Tue, 22 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647985284
