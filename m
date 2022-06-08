Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD297B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 15:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654700819;
	h=To:Subject:From:Message-Id:Date;
	bh=sWRWKbgOvQzGpDODDCqvdL+hvNA/EPWw6HUIW7F4TFM=;
	b=I4uAbw6o8bKLjPkIrTRm2pOV5iubdGbjAy+LWAjCRTF+mNI9kgAYj6c5ln+RH08e
	p9N5uVJXqVWWL6tSxNsz50JzNb9U+RAmbHRE0hcVdPZAJ2AW45XFFMMk730zNVBc9Gz
	5T6a+vlkZSPFxUFOVw8nq4MWQlEmqC0zjvGmYREo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654700819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sWRWKbgOvQzGpDODDCqvdL+hvNA/EPWw6HUIW7F4TFM=;
	b=KBP4ZGO2ND+fEVGLAb/IeeHnBJKUU78svoWWgoUN7fwMWhYzQuPA4jqYiXB5ftSf
	eJ4HWHg8nqC2VHyBWPkg0lX9is4m+WbdozH0UGSBmmtc7/7nr3g1+U+9IghLsYH8AGb
	5saz2DxHOoLRwf2mXPgavv/4e0zMn6tlADXh7h2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018143dac357-fe43e0e2-32be-418d-9e37-6a7e95202bc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b892b3bf6bbcb1305856a9955bdf89411b303165912cee7440c5d9194738e9b2
Date: Wed, 8 Jun 2022 15:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654700819
