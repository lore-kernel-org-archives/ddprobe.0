Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3819B5CBB
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660908652;
	h=To:Subject:From:Message-Id:Date;
	bh=zHy/IpPqDW8KEp59o7YPsGzvkzhhKY9C8eFi2ufaArU=;
	b=FN4/jLvByT/VtisWI1kqXCqHR4o/jBVOEdDzPnGZm6MbaAr1m3qKJFCAEYk2+2YG
	0GKy2v/DHnxGWd1nZ2Ba0RPd0lo0/VlmJ7zAcaRwocR+lMyF5XIqH5CvTHfmP/dp+Wu
	QX4XTexJajuJsRS3aTZHCLGvkJ54eYUEykCSoH8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660908652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zHy/IpPqDW8KEp59o7YPsGzvkzhhKY9C8eFi2ufaArU=;
	b=FJVeve1fLNGeYB+/IMDE15so4FneySLd3bClcJVJ6wmHewVeCUeUDzqZQZ+svVpB
	A6qdIAs5lrA8PKb/mfDHZ64umAoNOC5NgLYNN9gJX+1jRD7MZiI9NIwiMjiA7KWqj9j
	PilFHsi6hjH17jCfRahdsBril4NDXgtgbU1VFCTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5dec824-75ffcbc2-da16-4b9e-8cfd-eb47667e1e4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 543076a0d2bb9f7d60a08dcf8bbb01df20992b99f383c5e78c13a1c24bfdf622
Date: Fri, 19 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660908652
