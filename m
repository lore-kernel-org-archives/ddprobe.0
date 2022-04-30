Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD981FC3
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 18:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651342138;
	h=To:Subject:From:Message-Id:Date;
	bh=WSdxUcqGIP0ypknlCaocAD0wphISUYk8P/3nn4pigKg=;
	b=Cz8Mf2vG6FbfAQS9TwvSZuAfKvq2DcNn39PRU/KZisrnao/KSjK1bErltR0Y27Fe
	YvyzW1S619VoZRtLS2vGElRVQjTk8+N9cgDcYFgyUMpchLdIBAv6JtnC+W4DfHoUTJY
	7S68+xpv129Bo3TUvwfEnLMmwyUiAB6hAIRyuo+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651342138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WSdxUcqGIP0ypknlCaocAD0wphISUYk8P/3nn4pigKg=;
	b=TA2dlmDssFAEuPk5y2aBK7M73+Pwy7ulpgSWSAcdI72xaFnk4x+eV4rJK7QtQY8i
	hRxT+lIy7F9YJN1kZ27ZP4h0tte1rXBjW5Folydt97tdBzgbV/mql8p9U7HELKXpwTv
	0GndKMiQvpVKIo7ovQkF9OB8XTz882UaFQzME+50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807ba95bb3-e467c50a-958b-42c3-a6ee-eaec1fdb197c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9df04343da0949ec5904d3fae6050dd3a3e8ae21a2f1635713db48830ccb5fb1
Date: Sat, 30 Apr 2022 18:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651342138
