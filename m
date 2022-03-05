Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698426AAD
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646510484;
	h=To:Subject:From:Message-Id:Date;
	bh=jHZK3GUtvQ4B+G5aIPXmHDy161TnhGeSZWJHSm8mPgs=;
	b=YaYBV/Ei/luvzDvuDKZABT6hAGY9GAOu9qnSWd+5fEwR9iPzeXjxICl2Sk++6euo
	BCEjD/4sPJlZQ1aeH8TyZq8FYqyTc/JHSiPPFFL940+DqsCKQ+30voK/lKZG4wBoSQW
	LwY9hv+IStutPDNSVHX2XzNGNr0Z+HXLgpyFzSsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646510484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jHZK3GUtvQ4B+G5aIPXmHDy161TnhGeSZWJHSm8mPgs=;
	b=A6dtZaKbr94Ytw4F+FT2V4Qk4LCz4FnD7m8RByxStfGbCJhGD7IEga9amCjLuu3A
	+Fw0NE34a3dTV3CvB5hA40JWfSl3brMkTqDn9iPBr33LjBO2yJ76tUdGsJNOx2Jw1sw
	FSO0MHZUkNR77fJsXzarv/7hoPI9ED110grHG+w8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5bac2d1c-4a9b8c09-2e49-4e32-8280-3ee8be89f057-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08580acc15f32c8b80d201b655f9b0f8ac662fb9284efa4624ec6773197a2f97
Date: Sat, 5 Mar 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646510484
