Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3438120E8
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 01:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644630028;
	h=To:Subject:From:Message-Id:Date;
	bh=AEjfeAZJOpo4Sd6dKJSWoldkg67HQgzvFEEjlGVI6Hw=;
	b=J3a3vXRwdkqWLEFNMkEFZu5nbTg6zupEKHNvics5cSy4i40T+iSBNBkqQ/hkzleb
	ZzPHSOHq9XKRERTPI3VwtVXM8VsXXvpkqFg+i3zHBfPFUMD+BzIAJkImIuZvixw9qVy
	+7wzELnhEX8Pn+au9TjuLTWDFt61IUb3yxctlyVQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644630028;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AEjfeAZJOpo4Sd6dKJSWoldkg67HQgzvFEEjlGVI6Hw=;
	b=FRbnm+L0bcxsY+B0lIdgCQC4EbvonKtVWHGKi256jW8MCAVJ3c51/WmgtnrhlX1s
	7VtqrWJmsFMN/ZnjoVKLZDcWsSHfHT9vqbvK0HtV9gN/Ov+0ptII4pRGou/XsPSOMSP
	2eYpjBBdEkef3x7+XmLbWhn56j73Qd1DUAasjkPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeb96b075-f186107e-95f7-441b-9bb8-9b1e85366185-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9914adb57e0dab64040bc766b36a171937cd7293e526addfa462c44a3cb60168
Date: Sat, 12 Feb 2022 01:40:28 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644630028
