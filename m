Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A06751FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646564485;
	h=To:Subject:From:Message-Id:Date;
	bh=f1gxyqjLOLo++MUuGN0EvteYwXzbXCKP/mxYdFLIonU=;
	b=DTlR+ZCMMvsKA1e+3bu/NpYXlQzbG7ZM1y4FqR/Q74zarsoQXCt/+KJGHHp/W5/0
	Cp7C6Lq9sQ44w+gRbgep68OhO8QceZzktGrJUWO2oQjHCKTdXH+Y0V8bJ69QuHlPK8B
	+mtF6VUP46MdWxrDue11X8ZOzMEU6kkFQ8FaGb5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646564485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f1gxyqjLOLo++MUuGN0EvteYwXzbXCKP/mxYdFLIonU=;
	b=PgHbYa6hDpUtbOYB08+tVfAFD/5oczN8hyZVXUR9Y1dNL9Jl+lXg56bHPIe7i1vB
	yqtM8pTfCu2U3Q3EFrMIOOEq1dBH70t7DWdLkjAlGWyI6d9ZLdgUNfOSPBqs8OTH7t4
	O+kVPgL29B+Mi3Ov3WDonnJIyW1fA5APQ1Tj7X5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ee426a2-626a22b4-bf99-4a77-bcb2-1715d48f5b7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bcfc33d9063f07732ebf88755b18f106a9f0ecdff96a50119ed86832b30a9cf
Date: Sun, 6 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646564484
