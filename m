Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7F22568
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645521384;
	h=To:Subject:From:Message-Id:Date;
	bh=NCxSjkXKddZ0X59LDHZmxQObO5xST09RpY7+EfPvVg4=;
	b=LmRjpXaKB41uzPuZEK8yVqhk5gol8GEY3bVSmCUkEGL0JyhOaeWYYDluLlPiCIOH
	yFuUYPzTq+uujWarqrbU8jvXGy4LhACbIKq022nspQ5kDM2rdWYlyO1O/UB30VsX7XC
	AVXxYZEnSNpv5giYHh4Grz3TwphPqndwPKuTbqYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645521384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NCxSjkXKddZ0X59LDHZmxQObO5xST09RpY7+EfPvVg4=;
	b=kSDmCL1E6yILu4Ll+8LzGt0GZhXj/xkbCr+J2QRBYgptwGSKYnhKIIZouQ1c7Sb2
	NKJqJ1q/w5Q1DEHLQ3cZCl+0VEnHH0WRhj06XOc5tD/7KHSWUwJZAfjN/6Uf2Ex2bpC
	ODQxr4Pp3UgjgUykTSWzby2GUDCDIrxBP/ub/OEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20b7b56d-14245192-89f9-4f5e-9d81-036b04823cee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59f3008dde15738b103ea6d3c696db0ae61fba8701145e9446d92a2a80732a70
Date: Tue, 22 Feb 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645521384
