Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED6D28EE
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 11:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649850238;
	h=To:Subject:From:Message-Id:Date;
	bh=5O+m8Nt4fCEa+HKS2ocjjd2I3c5uuvj1wvYR/TAurh8=;
	b=i73QjVkAXKkb7AGNGTrhwfMjINvgJUc6ZF5DIWo8EigtPSFVx/YjCmBUXCC87Y6r
	9HqqiWLjWU1qodR9XmmJN1F0Yp+n+KOrRGakSGLRa8GOub2t9YhJC7e92StJh59Fz7d
	1LXaMtuIfTqevZLVyvt7S2kFe9Rr3qk5t2iEcweI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649850238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5O+m8Nt4fCEa+HKS2ocjjd2I3c5uuvj1wvYR/TAurh8=;
	b=C1Qy8cz0hPBDzi6RiJlcEB51kpbLFFuWmSpmaqFqe8Bb6RoUrg79pe4cUSsMrYdI
	nYu/JRHAwLs4NC7EB2wSdwVEhpXgpsnHcScRaZNPfBSeeMGHEc27KS+3KOr5swMnOq0
	Owfx5htmwjSsgFa+UAxUs6jz7ongnd1WvBb8sb0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018022bcc54a-155ad2ba-8d49-4741-82f8-72dd1b601e0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16a1febdb543e141d4ed06af80248036120df15d0a4b6d85e91a6c0d561da95a
Date: Wed, 13 Apr 2022 11:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649850238
