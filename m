Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43233D79
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 23:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653347399;
	h=To:Subject:From:Message-Id:Date;
	bh=rx608EpNUpUOcMGhJtbIdjQ1IWYQcSOuc7U8yTNk7U0=;
	b=S3fik4lrpEryM1cmT+evhPYVxwzb/g3i6GxkjK0G7Q3Zp1VuzOclKKPgv+iaNI+0
	LYNNqf4sEkYs3czgqlKbyzmXFkVQMg7YaGfZuZLUCpbn4wq7EhkS5PSLyPqf7FJrpFh
	ZNjIXBpddWjfUiMAp7JIRIj9tsu2HZxYI5zOgX10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653347399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rx608EpNUpUOcMGhJtbIdjQ1IWYQcSOuc7U8yTNk7U0=;
	b=Si+yb8ZXUKI9KmwmIz2VcGyrCYP/H92gOUhqnTZFVLqKdH+NhKykl6pxh1k1RvmB
	10ywt+QRi/frdKoJ0CsU1gWVm4BazBsT6CVidXTVwpZ9JVCey3i2/7XkpdEMUbv77Ky
	j0zejGt4dk5Fz3X3lblN3JfAwPPgMkMCoXtvXuow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f32f364f-5e897918-c25f-4e29-ab3e-4bc49a2d44e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddaf6839f96028529f4422b16c5229b7058f399f78d6d8222cd7ecdbe11164f9
Date: Mon, 23 May 2022 23:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653347399
