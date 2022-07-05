Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831DF2F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657013812;
	h=To:Subject:From:Message-Id:Date;
	bh=6SYLPa+jdjYd78TLswKj1jqie5AxY3CWB+PlbSd6Vvo=;
	b=DOCJjkKGkhYI5hhXSxexgRZJ00K8AUT8VMaqO2MbGoEIZCHGQGiU0oR+LtfN76Yw
	YPjIwe12qRkYAvFAPeQuR5qO1Kc4yMSiBQoHN/v7ZB+9FPxRK6ojUzbjV76V0x7IlME
	yzEG56lEC3pNcTqR5RlZ+0+M3HeV9VWNceKoRdBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657013812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6SYLPa+jdjYd78TLswKj1jqie5AxY3CWB+PlbSd6Vvo=;
	b=dB8s3XGxbVa7+39JEWjogP4nBOfeT9Cc23bcgUverv2pW4MQ07mkvT1zyf5H4JO+
	FjWxgZDfOVUpCLz+nmqzgE4hUO+bOfD7+Ea3Qjdm77pp2CHhNtD8L8d8DrflliHgQ+J
	k9oIHAOCp2qU7h7+bSAGyZfyacl4nEQ0oAQlYo4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cdb83c7c-cac1bdd0-eb05-4d27-a82e-6bb8fec6bc8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c451eb4f906fe43e2a7194b0e7cf0e7a398cc8fc2db577659d288ce73007ee5
Date: Tue, 5 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657013812
