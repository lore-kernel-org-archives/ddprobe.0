Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD633185F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 13:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655214239;
	h=To:Subject:From:Message-Id:Date;
	bh=nh7Z+bRyEeijE269udRz7HPS1vAXQCTc9ceVaREyAis=;
	b=d48rQH1hGhZj753UAKDrJYtC0o2Uc46c6rhRkGkE+ZSWMUlPbIB77o/uX2A/ycoh
	BjYf3BVE3w7Moj3X67HXgwuW/PA/Q8SjsCzSQRpnEQvafrN3izf+3UOVZuHkkhfrhvi
	rhPGlPlQk1aGj/sWG+r45nSmcEjADMlDjq2hz6V0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655214239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nh7Z+bRyEeijE269udRz7HPS1vAXQCTc9ceVaREyAis=;
	b=j8noOvjRzSWmPlztn7AtCwY/ScE9N1avmvRj+wf/zklKn/qG4t6+0QgEmQOAmSdK
	/aRP8rIlzgb3aZiXtU9AcwEmrN1/8tvbDoBOs5r4t1jeKOND/egKaKsG6XkQfDaH4yh
	ctJuWHQ5VMApS6EtMhqj7SLfaCu9dMddPZS587WE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816274ee09-d6fa29d2-f38e-4d78-8ed8-34ae512dd4ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dee060c720bc5ec257f89b97e090a1101513e46dd20e56f9aa71b7c30974600
Date: Tue, 14 Jun 2022 13:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655214239
