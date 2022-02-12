Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309B3257E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 15:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644678651;
	h=To:Subject:From:Message-Id:Date;
	bh=HxUggcqoKKkcQiuMhOlKFmiX+3HnPy1MEfBxq/JAmS8=;
	b=BDZ105nlFTmLq8b+0lwXwkS6oGKOlJM7e7PNdG0CPTKYhjctDXOJ52m04WV/gmiI
	9SZAN4BfZW2Dc7rxXtDNCMNlUBg3KdcoUTdYzMwd1neWPzmNnnvtXameWjnRb3rD6NH
	yW2iAKsrtyOhY9jddbbfnJhOkC1L5jE9dqdxDvW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644678651;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HxUggcqoKKkcQiuMhOlKFmiX+3HnPy1MEfBxq/JAmS8=;
	b=ExsVl2+NiTh5bNs0MT7vH0wMAOXqbQtL6Vi8FufpZMKauAyx3WrpO+fK6hxf+wfa
	+ZRNN3xy0ULfl5h9q9le6+DfY6H9+VEtkac4REef1MWUY8uyT3dWCMQC+3K7di3ObpF
	yM/jkVjAX2AHozXAimaH5RFswIen2ldnyVWykab4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eee7c9e30-449ec7d1-92c0-4cd8-a752-1d6c37c7b070-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1264b51ae8fcbce4294b152389dbca75ca7621c18ff8b45d438e19dfa4597968
Date: Sat, 12 Feb 2022 15:10:51 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644678651
