Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EA67C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 08:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654675619;
	h=To:Subject:From:Message-Id:Date;
	bh=lLylE2VzQ173z5sWE+w2CZmai8EMKJ/FLA0RrGtI+FI=;
	b=Cjd5bALQUJuS08KUiSaloN3g363Ojrh6taJfycrJ0xLN9wSCChkwQXe20rEtyPF9
	GRvbrHLeS98jk+9YUM5PhscRu/+fPKleYhTv1d06J7rtAVEazguQfpEkGXSZpqMXUPZ
	/gpG9KK4/bYKKU+6HhSGq6z/yg5/VA1AxK4Xhc8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654675619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lLylE2VzQ173z5sWE+w2CZmai8EMKJ/FLA0RrGtI+FI=;
	b=HVjXXKnAwOEsLVxPzELAs4EE/gOofH6Ow3j0e+v0CGNHXvjmNe0YZsEItQV0rb2G
	XHo0br6osR0hBlnxiS/yj+yXn9RIGH44+XnPpQM0bi624ehtoPhDkIqCXqfdIpWz6TX
	YX2WzjXKV5REq4JyEtVGUdIoRYiEF/kIEer1E7gs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181425a3dc4-1ac5ad29-b34c-4cb9-baa4-4af7c52fa1aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e4887ad9c11abfd583e755e689c7d5cfc67f703176e129bdb2a11e5856dad2d
Date: Wed, 8 Jun 2022 08:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654675619
