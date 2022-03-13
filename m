Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9F47A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647186684;
	h=To:Subject:From:Message-Id:Date;
	bh=UiMgrjhmxs4NZpcIUw7TeFDlypkkXIMbz1HR8Y3/L7c=;
	b=HF3yp+Jk6hpN3hYtaVjEKE1bo4o/I7LigdZ+i+VgOC6Cn8d7gnywKRPu2U6ibx5L
	XIgC/40ZO+XCcfphozfIUamLtepKc9rN2B7RkzIr8ZuAOizM0NnWxFDI2GJvWizT6aw
	kf/zw0tKQylpijRL1SxdzRG2eP0gdxYgWrmQ9Kww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647186684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UiMgrjhmxs4NZpcIUw7TeFDlypkkXIMbz1HR8Y3/L7c=;
	b=B0pC/5UKZHJYLW9sJGQrs4AOXARoltLDPLTC3e2uN9uZburlqkQoQsg0ixD7IgKq
	hF6J16/VusEhPEiSLHAM2jnP931OCWm3ADvAv3hbsWUsovzAAvWfOvMcXY1QfBv/ZM1
	qcZTkS8aDuP201xPxClBPwcOn/h2bbTutiAj8aII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83fa2b33-78305bb7-b2af-4fb7-a5a6-7b843c40cb31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33c5b18219b605b07488adab3fd385fc268a910efcd46e4ed5747635dc8e78d2
Date: Sun, 13 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647186684
