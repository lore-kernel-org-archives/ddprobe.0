Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24C317EC
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657781812;
	h=To:Subject:From:Message-Id:Date;
	bh=AdGoNkmb4eeRCusG8esyIOeZna29VFogod3g4VcsPKk=;
	b=kxCSMR3HY7u0lxDLMydT+hLZ4tPIVCSbRWsn9uwrUaHweZcG+pwW6V1n/SR8VpeR
	cVMW1jSWh4cxu/ADeY5V8jW1uqV7RtCqk8ROaYAiHKk3yAJWG9UL2+RS3+fHC5svYfU
	ysf2Vz3OTV3bd0VnUJzSPZNcn7Nezqu3eXNel2I8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657781812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AdGoNkmb4eeRCusG8esyIOeZna29VFogod3g4VcsPKk=;
	b=g7KaBb6EYGLl/h6VR2N4JAN7xMNgdKx9+Tb49Pf/FlYeQCAVXYHoUs++u3CNR9Ce
	hrCPmYK94W48VV7QQt9f801b4GrY0Gw36U5cYEAOt6KcrvbICIsGa+qMlIluoEa+Mwu
	8iikmfAcCggoZKv60yQJ6GBc/PwmVplONcmSB/xk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb7efc25-21baec55-4ef2-4551-975c-3d43bef6485f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c79c8cb15c22bae3eb4d29b427ca3ff837180f94985c74a376c5bd65100208b3
Date: Thu, 14 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657781812
