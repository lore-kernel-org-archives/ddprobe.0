Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095807A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 02:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653012839;
	h=To:Subject:From:Message-Id:Date;
	bh=ACTUz6ViJmKxR5JlcKyVKB0kuRj4Ji3iUm3kRQ8rA10=;
	b=cM97vSl8V9/ykq//DNGu/O6wTdGc+RxzjGa7E3Ei8CuTInjuxuXQWEk4uTR//mfl
	Zwv5D2fQUQWFBe8Z05c1sHHAxwbTSy/1pKXU8qQTdi9q6QOPXttZrCVt2i4vWLctDan
	j/HSk5kCBdXQXiFSklVzjF9O1DrgvZ6Mo+l070eg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653012839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ACTUz6ViJmKxR5JlcKyVKB0kuRj4Ji3iUm3kRQ8rA10=;
	b=YJ3GKAZG9RApSW0hxsdGEjIjluJgfg5d7V6l7pC3/KZxOJLyNjzI2Lsjq2t3uka9
	PU33mRFVevJbc+osgZdPqDSan+2g01iM+AllP4YDljBYR+ZZW1d9P8y+fubpJvsX6S8
	RjCYC1u89LUL9AbmHIW0S/3Q5VU54mE+ZIc5+Nlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df3e3b3a-3aee7504-3147-489f-9303-258d2a451da4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f256355d1efb0f54af14f0e57d2d6edb069204e2bbf0710ffc967ce299b92920
Date: Fri, 20 May 2022 02:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653012839
