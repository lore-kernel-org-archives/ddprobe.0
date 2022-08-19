Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812E118F
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660897852;
	h=To:Subject:From:Message-Id:Date;
	bh=A31s7FULU+jDVbwL6wxA1YiAP3MTOooOqqsxBSKWvJ0=;
	b=LLj29KCVlJSKE9/rmnV91VW4pKNaTZoH+tzUx3IuHqi58bztz09lATVAYU7fUKb3
	sJl3YFjoEOpU+Vq/VjmuEUp57jv8XSAbURy4njBjaZa76LthRdxaSkxcOeoGFWux2ws
	fGIY66x/wRVF5Fu0IRMIdmlR6UMg25voMDrtCnh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660897852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A31s7FULU+jDVbwL6wxA1YiAP3MTOooOqqsxBSKWvJ0=;
	b=H13a7BU+6lznO0zu8Z+LALiectKvf2L3osVm5qOW/rMCJqxQsl7yN1lJAN/6+J0O
	6Z8JuB2WrRFOecdf0hHg/PWpuXWHBDEdnTrGX0SofgM6iXZJqXpcQg3U+19V3xl288q
	9alPUao39R9T3Q916WDHCPOv+6r0ShsJJwhhmoXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b539fcec-789f44e6-004c-4296-9878-aad344d846e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f57fb83c31782956484c52c477cfa6018417405b74eac26f7a17f2cbaccd36ac
Date: Fri, 19 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660897852
