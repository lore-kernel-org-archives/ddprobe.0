Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C03E4A0A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657742212;
	h=To:Subject:From:Message-Id:Date;
	bh=g/vq260BFdLXk6+o5+H5g7901SNh5TWJuFytpyYBEwM=;
	b=DhdYQUvVLXFes5Jtnm7j4CkZBp4izWvk0swLNO18+mNKv+PKByjD1yC/0hP3tAij
	MAqmZk7JPoCx3s7KqsPLfw+IBIgCHKUuC+3/XX+awPcrZFcxOzN13/j9iZIA9cLiOIj
	gFV6KY8uZHdjEYK4KXMwY0LjvWUAy1Cb+oU5Z+nw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657742212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g/vq260BFdLXk6+o5+H5g7901SNh5TWJuFytpyYBEwM=;
	b=JxrVob15ZoVVFqVSAWru7giGryN9gG7Qhg6dnj+gBBPyDeRJ7/MQQMX7A5K+FD67
	gzuFP45Hqvxg+8/uBBdCaz+YZu/CvfphD13IEZVCErgNaEsmwCXRex+8M9up0+5IIyN
	DSqOuqBUgjEvkMbAsfBpcJaieoeS7eAE3GMIYyds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f922bce3-b417a5c6-5bec-43b2-9046-62ef15082aea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dafee3a9cadb80d4a3360c8a6c584ad812b89cca2454a407b66428f5a61d2adc
Date: Wed, 13 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657742212
