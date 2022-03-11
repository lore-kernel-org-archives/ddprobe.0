Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D4E2574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647032785;
	h=To:Subject:From:Message-Id:Date;
	bh=6jXfbykpSL9lp0XXjdKLkNNee8bDjfT5dDBs/zCc8bE=;
	b=KCv8RNqeUQtgNWa1/UplxZ9QuOTtSHbRyEqT5abqhQ2C463udefaQVLymw42m8sl
	PsgBeuLJWXsxbyISqSf9BEpjZIqMnwrO7j736KwADP9ZIi4XNkBUfBql4M5TKVFke6v
	n9YbR19CXRgBZjg9N6fLzM5vmyJNXaluZNMFnVTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647032785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6jXfbykpSL9lp0XXjdKLkNNee8bDjfT5dDBs/zCc8bE=;
	b=BWtwb3xHX+MuABqHWF3PTvansClALidfnmjiKnCAzxSGJxI6xoi37amWQlCQSRZJ
	04ir9YVSwJr3RljrEyqG7VaHQkmCi21rFcV0cPoaYMOJdNp1XIJ8yGEuPzQ14JxV5lL
	CWPR2uPZbx/wD/lhBNygcz5pH0gY4FV7tM1RveFM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7acdd813-18300354-9300-4ec5-9d04-e91b709eb268-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b6af8ec434acec12bab3958a365e4d366577054c019a58f985697d291240f11
Date: Fri, 11 Mar 2022 21:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647032784
