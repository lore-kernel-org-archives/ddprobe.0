Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779737E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658604412;
	h=To:Subject:From:Message-Id:Date;
	bh=oxK3NJSWshUXqTpMaQVXtQ2KKmx7qkfm3d1LgppWj0o=;
	b=Dwaz/edMjg0/zKFrC0MxLPtLdKXP2b64Hlre/PqG0PjVyJqSIzW+7hLRLbxZNYoO
	vUpjoMiBAN2RAuMJhl/OqqdjvAH3l/JHgH8XnaxHpcsFuhGFiXupnbewWkOMvHWWe/w
	RVjEzfMbp0jT2Et/5RytLzWnm+W6tlggjCId6Ak0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658604412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oxK3NJSWshUXqTpMaQVXtQ2KKmx7qkfm3d1LgppWj0o=;
	b=BYbo8R1Vi3cQzjIXfjbbcBMekDBVbpBGVwjpkfIKdJ8O7TXqdbIJiOtzBsp0XSiw
	PB3AETdKMi0v9iOxWYlv/wOwMMimeOKlzJhealFAEPKeI3gV3UcxFDXfmcsNdlgCplU
	bzpwEroaEVDckLzpydIbffl/mbCtpgUTedl/537s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c86dd68-80c8a164-0dea-42a2-ba19-74aec118d05f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e82b921de49e076cb4e77e7c7b764f82b52f0b78899d510ac5a96bdb2396a38e
Date: Sat, 23 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658604412
