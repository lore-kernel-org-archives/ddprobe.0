Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7CEC15AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647572185;
	h=To:Subject:From:Message-Id:Date;
	bh=hMhfQ+sRQy9ZBpRH1jhTXu+TZp61yoQxy7vbLEXHGTA=;
	b=SNRzoImweT1ICZxxWwpQN2RuV/ZvMj1AXcrHhwUvZsEyempJfLr9Lw9NLGsYpQDp
	NApZ7pJDMUOQVe82XyGPE+76sT++MRL5qZC9ptlSfYxrQwf3e/OFJnP6YcfxsPy4gen
	KWSmDrqK5Cyz4iJFHU5FXYQI7eA7XBEIK13e1pbg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647572185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hMhfQ+sRQy9ZBpRH1jhTXu+TZp61yoQxy7vbLEXHGTA=;
	b=fljsli3tYNCLStHCTrQHVNpatjmATURhS4vFz1/0Y4ay1SSE3PYQImnUxLALuxcN
	Jl3uGtpvAGJe/Xiba690AIrkOft6aSmw+Ng7/HmqxLyf0HnutwUj4F3ez4P9nE/ACa5
	sR9qy21Ne1ahfy8mmhIllZy+zD3bIWrunBCAllm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9af46ece-94ad2ab8-cfc4-4000-b254-e7dff644cbd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4eb8d99de542fd97a4020b694f60785886c14784799985fbcbf9ebc16b3f61b7
Date: Fri, 18 Mar 2022 02:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647572184
