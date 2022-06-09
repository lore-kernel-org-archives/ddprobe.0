Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCC033EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 20:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654804979;
	h=To:Subject:From:Message-Id:Date;
	bh=5dOtA0bFsYemGWeH4KYupzumKrOWvXFvGfSy+r+EGlw=;
	b=THi1n3V7/cVJt4VfHgXOTnn/pem9rDBqvDsnHjKFdmx3UnUS2qRw71osCM54TeiL
	AO8Rvm2M2yBWK4QnontkRF09aiRsIvfGV/PQ3+7bUY25kEoG1T3k1iJ0ddfYjF4hLnA
	n9PqKnlGvhs/bt0GrjgTuIAcc4DBrQMVCAi+hJYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654804979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5dOtA0bFsYemGWeH4KYupzumKrOWvXFvGfSy+r+EGlw=;
	b=WBlNn7VmvaKgdW/T7cEW6BrwsVGSNWbLYvwKwpkIVyRIOJpqO7Lu4LKMvk6xWQPR
	HvQjbw9V8C+Cbl49E5l+JmoQOuaLshtoADzLzzrupp53XsLhvzqzkJLQ5YemaPblrIi
	gYXzVFQr/MJBD6LhtIC7F7XgH3LRSmion34qvc/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814a101e42-69659050-9877-4091-a864-a7b54d6b47e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b18dce80495a3cdf72e8bacfff0a1563b6ba5ccd5edee905eaf6420529fbb0a
Date: Thu, 9 Jun 2022 20:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654804979
