Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B2933D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647864084;
	h=To:Subject:From:Message-Id:Date;
	bh=8HrD+207rP3vEhrgarg/LeRh7DFZ04mBKYBRdhQ8ygE=;
	b=XLiD8qxCXwYoF5TF/BEqAgCjLJw8HGO50pKV5IJ4KUFi7QXT7k546heh7oRvd8Fl
	YX5VhS06qONuX3pxiNQzZl+nhnYQGO1/Sj16MnZ2TMSawLXdDBuF4mnFO8m9FdIVI2O
	KeNbvhQ5M5j+ZxWklYOXuHM0+3dJ4GoaI1rWLpRk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647864084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8HrD+207rP3vEhrgarg/LeRh7DFZ04mBKYBRdhQ8ygE=;
	b=XANCcoMiT1GeiKGduSzRvUVzZVOpxDW+rRsFV7TsbjJVn4mar29ugkKygksOJ2sC
	DslK/foHqOje3jYFlcHm8dCfUB31BZnUOfmL9imyKgFjIeG/5iw/+GW/zrNl6uLk1+l
	qxZgco1pNxFS38XEkLSxJSHpzzko4/xjhNizjM5o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac5a795b-b51b4f21-8227-4e02-a74e-6819311a7c46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1990b406eacbf70367f9c0b7a830e9b55d00f53a6e86c2441a2bb88a7acf4b18
Date: Mon, 21 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647864084
