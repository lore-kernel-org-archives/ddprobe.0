Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114A9A2D
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 03:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657338412;
	h=To:Subject:From:Message-Id:Date;
	bh=v9+WZPhsPIL/DkC89/U5te8YNGPx7ekVYmDfGXcSSB8=;
	b=G7YYjl69WqEvl/MC1kB9EXa1fN0WSzeqWXXkGeSF3aWu7igHVN31Pffg/Dg1k4N5
	IaZjCroyOVhDTNVXh7VoqirpQAeQ7dIvNvgGPYwnIM+IqZ4HLI7kdkpTBtPoLZPq7QR
	G0In4cUJ6T3JoPdmxOoqh/3G0CsVP5HoJOSE/ER4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657338412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v9+WZPhsPIL/DkC89/U5te8YNGPx7ekVYmDfGXcSSB8=;
	b=ewuYyBeB2u85Q41XfAhxG8EsEdArirO3HfnsFpKlxqfM2xSmHeDr8P12pdt7awes
	R0Fy/8H5C5YIgq8w3QOfia83dnNxRufw8/tiwZ8bLtgm4MSZEsxK8IFWubiM66pSS2a
	+bhF8cxZYCEqQrG7OqeIiplwSDQ+gDZhwqjDGUzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1113d02-3f1ab93c-7ade-4c7e-b281-4253f51ef2ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5609bc350401c8ccc76e547f588db553655615a4e35435e8e1aef68475b2b24a
Date: Sat, 9 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657338412
