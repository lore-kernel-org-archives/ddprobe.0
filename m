Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A02C2904
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 16:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652978819;
	h=To:Subject:From:Message-Id:Date;
	bh=gmyIqNi8k2kedl+atdNXJ+F8gzohPrl0H0LwStNf1UI=;
	b=c09eWtZX7LIyW+en00PaZhkxpqdqF5NMjG2W5DXq3X+9b69dx3pYbI8JefHlWDi6
	p99Z/+p2ynqNiKtt5BUY5f/O8GzRRFFrfMFcGLjuNnEm+bkOZliuhh3IBvTKPMduh4v
	zzlWvbkeSQRRU/RK2Nyy0ejtnICc5KLJdxqt19Lg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652978819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gmyIqNi8k2kedl+atdNXJ+F8gzohPrl0H0LwStNf1UI=;
	b=AO/4PpbRN1zvY3z/fiIixgKph4SCCud5F+LW7aN1V7QnKiFzuEyTdj+27KuyYxvP
	rflcxu5ddOWTY6xgh3VYdB1iVG6oifgOJ6wV0jq50d1/3vDiUaqj5GcATb1CNhKdPDr
	NzovxSltV+TqukqDpl+dKFDt6ke/qnzRxikKdq50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd3720dd-c87df633-99b3-4f0b-b2a0-37abf8007e0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2b26d6008b91d30e0e1f64151d9874e36bc3ac23b7bbc9595ff9135e03ee811
Date: Thu, 19 May 2022 16:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652978819
