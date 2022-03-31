Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332E77F6
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 10:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648720978;
	h=To:Subject:From:Message-Id:Date;
	bh=HO/GmOBJdWoo7fTp4fUB3ZCYpfpZVKLB4tBhrMbIfAE=;
	b=i2WpbIZOMngbErzpY7+I11IE1wT6QmT3eIZDzi1T1SUV+1TwTo2Q8UuKpi5UoAnj
	yWnKlxCrI4RLUXyJ5LObw0sLyLb1amXbRC+Mru/FmPiRCL4LOgu9D9dqTMz02ytqiYc
	tWR+TgmAw4JGOgcS+6q9CfxJwM+vdaTJcmnK5+VY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648720978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HO/GmOBJdWoo7fTp4fUB3ZCYpfpZVKLB4tBhrMbIfAE=;
	b=dTa8eDdMKl0MDqPXxHxsVhaym3mrAKQzeA9nbGqHhOIj1KGngTtoGlNe/8jaKd/i
	vNucQQAqWRLtDt8aLkQmJHxrC6aqXC057/pQzIOPYAto+EwslsJ5tb8B1nC/ZXgt7fj
	eHYF3HGO+FivMyeDG2aox382gGuJwfnPuL+lS9/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdf6da16a-3706367b-d6c8-4c82-bc5f-2e5b71f2da33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 440171c7780abcd686eb708660f7afb87b76b3bb8f9b863c85cdb6d3e0b430ed
Date: Thu, 31 Mar 2022 10:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648720978
