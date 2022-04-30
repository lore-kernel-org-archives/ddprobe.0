Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3796146BA
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 09:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651312258;
	h=To:Subject:From:Message-Id:Date;
	bh=yknhB/mIA9QuL2HkgOAIAmzvlZqpztN4d/R8X0hmya8=;
	b=S2Q64t2S4pndtvxQR8xOly2hFwU3co8xuazl4a/k1W8hT0/oKDNEjW2CZ/2G1l8Q
	NUmueOg/IDXZwcGHQucERFoFQmmxb1nebMgO/ZZ0YwT419c60q6l+W67/s7JYHItUug
	wU3JiluwhXghFvJj8WOu51XYMzIFKNHvhti+5JVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651312258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yknhB/mIA9QuL2HkgOAIAmzvlZqpztN4d/R8X0hmya8=;
	b=AwCUx9Gc2NLx+vBULmgaRjODEdw4S/OjzEWh6mqbrdZnMxoVu2BzIlmZ+v37HYFX
	Oc8lytUyHNpwybxbYZHQm/Z6eTBwG3rRoR1NfOQFk0KAOQfcumTzfVD57HdJpO7IiTB
	7r2sc8h+XWc9XjD4Zquo49PDgfZGzuRdd0Yu33m8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079e16ce1-62d1c08a-08e8-43e3-9144-73b3573cc373-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5259edc34ad7c76f5c285705787b72cf9345066f5e94ed6423ed72a8ee10e98
Date: Sat, 30 Apr 2022 09:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651312258
