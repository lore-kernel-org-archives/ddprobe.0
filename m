Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DCB7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 04:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655611559;
	h=To:Subject:From:Message-Id:Date;
	bh=cHg+fVAiHcE489h4lRa2sXufDh2S1IS9ma3HMLLTrMA=;
	b=lNELlKLB2LJYBRR3DavmiFWOjtGqTad/0+LANMrp9cANf18LSPndSfocAe2fBkJp
	+tqKxmhFSW/SxloSS+DgF+lxEY8zC8gilrRca9Ct6FbWA4gd/wVphSgI4A3d+VrSgYv
	RPFljwQG2KbeMWRn/yALhSR9+mc4BUJ77zKiGm8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655611559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cHg+fVAiHcE489h4lRa2sXufDh2S1IS9ma3HMLLTrMA=;
	b=hSnPpKDfPhcXNKquP7cwWqlfX3y5SY0V0KpVPd9lX7Rhulnz6YvCvRkWNBq1jsgm
	QZo3sfbWCLVIF8UAXhaSZFcQpwG9YapRMV0kpHOo4/O3dNxqdowbXWZU6cydbZPf2NE
	18ERd1mu1TVQUcuAuCcSuFPGdXr2osLrHopyjKRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a238d49-9d90d9c3-3740-4223-b36b-e194308d66c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38a14061eeb8d07b3e6f01552d71006760a82fe98de911ca440c1c35ff5c1138
Date: Sun, 19 Jun 2022 04:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655611558
