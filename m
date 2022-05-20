Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AA115A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 06:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653027659;
	h=To:Subject:From:Message-Id:Date;
	bh=FB3UgibwsMw/YkUNx/HMs0pUDiAIfuKqg0JHBPKYhZo=;
	b=XmVm0IGfZLOKRqTDAK+Nex/5hLVwiuoHFjwJJTEDK1sjb6A03VVwqblaUVv0fakO
	UuvQDpbfun2R2qp/1AQa7c0at+QqWrqQjbCQVf199Z7aFA8d6mKwu+y25d/dyoXWFdV
	LdhxUmXUs2zJDHznLmVPXafY+DGPZBpI+ZsWbW2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653027659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FB3UgibwsMw/YkUNx/HMs0pUDiAIfuKqg0JHBPKYhZo=;
	b=jpj3SkJWUPaxNG3sdJ5npn5owosrBfWcGxnvfhbuRSBe77THZznYgS3cobOSkHBl
	/1Ug6tDybXhMOtrkHblDoHd9KPE6prigWFJuiYRbeDvLwbtBhbxffSQQwAW5HOMFkYS
	0WuGUe4Krhp5NShrTDB12axaVwSuu/a8Lo1pFoPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0205e2d-f2e4ba76-c22a-442d-9b1f-13b0cee88129-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbc59eceee6dc82dd33b51b07781fcd6b4e8ed48e716b8bfd60620f7ac0a4caf
Date: Fri, 20 May 2022 06:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653027659
