Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B68810E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656662212;
	h=To:Subject:From:Message-Id:Date;
	bh=tUubIQG81ovcJL+FY4VLah4/y4Rv+kGdOBJhsHtY9gU=;
	b=K8CsOvq4y1BfSaIdNEh5o6XndzWCCL5M/HvjhefgfM9WRMwBr9XgjnUh7BjD8z1k
	DAR8p55G7g0pwa8PJNRLL1BW49zrPit3xL4kjzeFzDiGEcEkXlGFynjzId6yWwlCjNi
	lv3ecbUBLXh7beS0rLPZNBvWjwYfheUzHUFVvHGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656662212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tUubIQG81ovcJL+FY4VLah4/y4Rv+kGdOBJhsHtY9gU=;
	b=SuBrSjgDjVN0SfVHlbUyqejjzEP7IMR0ZudWSGrG8Nh0L29KEiePKIDNLd44B8co
	nm7a0gNmt2d07V2NOtBs1A0KCMZD8eBxHgKvMHXq1vGR87u0H4OEup1+xK3Ud9/COwF
	crIaWlhKsk7+51E7WnXlM+0cm8JZaNaKIM/xDpZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b8c33ec5-be8bce7b-907c-4fb1-b15d-703d701ad087-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ce7e587d7e9e368ba3070fbdc00b867e3d2c2025f53a9ccfa205c0a87c04893
Date: Fri, 1 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656662212
