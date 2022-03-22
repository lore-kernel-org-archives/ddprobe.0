Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8191AA53
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647967884;
	h=To:Subject:From:Message-Id:Date;
	bh=sbNyOM3CFBHjpDYjNkApO0DQBiwYk12/2yefGzcYjDc=;
	b=Vb2w4Su46xCeRA6MH/voURlWzj1crUWaMvsn6sQ03HD6oXneFbU5gDDvAVPzLMqL
	02qDvZV77a/r415CTp/NqxiyXkPyswW3eTOn6tWbNIxgXMt9Yv72J0zZRAB1SinonbJ
	N0esbR2kKXdVqQXPUSkIPkf2ZuAyf7Qn9CGS8awA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647967884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sbNyOM3CFBHjpDYjNkApO0DQBiwYk12/2yefGzcYjDc=;
	b=b1jMTGqaF6SuxNid/J+qyOECSU60YEvKhuy+5N4z2GvuSrOaPiqJA4NSfN53zNej
	6/38rIdvHBooJYrD0ZOTFLWFDWkx1t6JWIu9u6oxfOWfuCLinFQCaXr2/Id4HNFI1ec
	37aWPE6B4lPr/9T3r6ydaJpYCWq7pK0TiQke6NQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb28a55f7-aaa18840-e627-42d2-bbb1-3fcf0ef34f82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a183fdf08fc0a0f56558ba4054f738709e8feb3a6fa3508d089952efc6219ea6
Date: Tue, 22 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647967884
