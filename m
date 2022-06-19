Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9C27B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 05:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655615399;
	h=To:Subject:From:Message-Id:Date;
	bh=bOuknFI8PZuPN9k2Re9B7zPPQheDPzqcjaoo38ymmzg=;
	b=SEF67SU2z0oKpTXtvbHuDiacx2tkVQY+VDFyoE/u51FgYne1RPBbnTDKBHP5t7ef
	4ON+b2smOhmbJo1Ve6GkORRcNCQOtRNOVr5vJTz865xNYdNnVZTEkAZxOJxjKfzF1Xr
	q3mvQz5dws94NdIqJipqe1qa4uahAOro90EyG124=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655615399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bOuknFI8PZuPN9k2Re9B7zPPQheDPzqcjaoo38ymmzg=;
	b=erWZ3hfnjQM+vdOuJINC8Ecf24Ie6xTG0mc1jkLBLDBLXX7968zcXBOxW8jkcBIx
	ul7fWHy/8mtJ4vnJifeO0GzEDmZcTARU90OMqTz2uNs1XSEdFZtvhrb1NsffCSvDHbr
	OoLlmAq7etNfGm2cXa9eXNRNkT5LzI2qgLKwFwIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a5e2541-599ef19d-57fd-4097-a98b-1143c76bea33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be4a5563dc0992badadfe4fa79d2d5a729b44f45dc8b3b4ed05486438fc4c219
Date: Sun, 19 Jun 2022 05:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655615398
