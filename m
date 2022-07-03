Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBAB23A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656849412;
	h=To:Subject:From:Message-Id:Date;
	bh=swZ+GFneitTrpnSQjkRJRc8FgZrYkcQTjgjT4LgcIyM=;
	b=Ig/akY1KRIdkoJBnHUUx4XXrJH8xRH4l0hbq8hi9nYVq8yrAA7N7/xVGa8m8ugee
	icDFgg9zTY3GhhLadPxtXZlt4vdxwORV/NL8dXf+z396CV7tEuiDevGi9dpJAIGyMjO
	Sazkkg3zGeqFENg+516o9tibr3JnbcOzU+em4MII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656849412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=swZ+GFneitTrpnSQjkRJRc8FgZrYkcQTjgjT4LgcIyM=;
	b=i+UM3VhLWsonGpTqg3uEyhEKpuz5jYmOB4xSGLwkWnq5pEGj2RPqQmFXASx5Nft7
	BqG8y3MPz5C8asnlXZOLB0bGZ3jj7IZaKiTFWMiv58twu86A8YMnH9R5h85YEnhAM6w
	Tv9W0yuN+Nm1AmJXhA73Qnc1PDTQEVhAOGKv+OwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3ebb0c9-3f677753-f45b-4534-b59a-eed0f97078a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be76c46d8d6e9c98d0b2744a99593b1431824e92b22f3a88c18fb736be062eed
Date: Sun, 3 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656849412
