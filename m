Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3E2EA2
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657385212;
	h=To:Subject:From:Message-Id:Date;
	bh=sZeaCC5UnKkJyNIpdTuRXFn/AzOeAJsq8ruZO33kenM=;
	b=B93nOG6kisxawFAXSvlXv4Uteet/QnRk6KhSkFVF/YTKBEJtFeH0w0qv6TU6dBm3
	2hRe51VSh5xkh4+7papsawqGJMxzThZgAPrgrxtu+b3YGNabxCqnAMlA3yrrzR56L0o
	rSkUEfBbrvs6ML1uW3Tbe5Gigpb3pOkiSRv8yJEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657385212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sZeaCC5UnKkJyNIpdTuRXFn/AzOeAJsq8ruZO33kenM=;
	b=EXKiHrWTyzryyUoORyFRLMy8po6wt7aX7yBzBmhWyzXlfMlOe3V2ltVCIh4qXhvw
	nj/uxJkfygcXuHjXA0YDQX5QqMKJD5iTvc1knTkgVCECtOLtCZfbH0nIENfj/mDIa6+
	2BBKfzbWrvtO93DOD2t+aCPTr9X9ZjjbT+GZuBqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e3db59ce-2a0a02ec-20f2-4e2b-b06e-13f227c5892b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2238490e7fdcdb5496d80b5ef8f23162e1289947eade9cc2ebd6159b6f399dc3
Date: Sat, 9 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657385212
