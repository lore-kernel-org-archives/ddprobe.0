Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B48E6004
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657820812;
	h=To:Subject:From:Message-Id:Date;
	bh=jciFC5xUNLatiTcVJfI0+zh5Jj0J8A7a/pe/FzXjGD8=;
	b=ghjYhInFMcUfCp1eAupB31xXaoPt595wdyIOx4MjVRH43ZQcx/qbnrYrCr7w5E0s
	zzZ0QO/iGw54PYE7+RYQycAQF85pAwd8G1gnv/S8WR0fPDVdcKY7/peMek9PJHXTpgx
	L6EYnoFJ46v26MjRyu4pgebniNCucATD8gadzqUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657820812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jciFC5xUNLatiTcVJfI0+zh5Jj0J8A7a/pe/FzXjGD8=;
	b=DMcTfXqbCN5VcnpOAwI2j7yNLrLNGMsUXwQ9SntIBsCxCG6fICq6lqRcNCmlZt6y
	Ujo4CLTTXvfYqKjuiQxvuiz0+MyrmxYmvWT5NT3QlUm0LmbRbSLQ05nB6ht7DPsOKNY
	oImbDcOJl/EeDZAIRBeK7No8Vdh+qI2La3cvHyJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fdd21405-a16cccab-6af3-4bb9-ab6a-61e83c27727d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1da27bc4bbc351aba431545352a9291d98d4e478255d1d23eb505d941826cba
Date: Thu, 14 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657820812
