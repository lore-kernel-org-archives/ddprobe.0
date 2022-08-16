Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453BB33CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660643452;
	h=To:Subject:From:Message-Id:Date;
	bh=r4ZU7ZVtm+Iopj3aoG//Q0dKqPv/aPPb6eQ+dxUPMTc=;
	b=SwE9XMbdqMmxBpkStQGd6VXzDTlHj7YeYAY3EY5EjdawthZyukpO5rJuVcGmaFtV
	ABm3Z5WIr29iYYStaKkl02dAkdE+aGwOi+241eKzCTyEoFkfZmXa1GEVNnsrXwnebLx
	S3XQhdMeGe95IQ3mU8FIdH0CILgYQOEjUq3/CZ2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660643452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r4ZU7ZVtm+Iopj3aoG//Q0dKqPv/aPPb6eQ+dxUPMTc=;
	b=gM7UrvzY5qBH8k2pOsxFipW0CvUR4BKaxbv78HRuuLGuKOWLIvbo6xByx/iFzf/7
	CP+6HnSUmx1fLqpcqjuw0XUA6oKmInj1y8mIszUXGRy1bjE8+xa4exr6gHaSHXLc3RG
	lj0fGsFUsemN6pfeBLyjSg7yoDTMP+NymfV7Nrig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a61026a6-064e609d-8a14-4707-9d4d-0b82f6f4aaa4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8edcc8273632ae02b1060a997c855d6eb6a067b919422e763c0b7cf977ee6b1
Date: Tue, 16 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660643452
