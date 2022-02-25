Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77AE7C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645805185;
	h=To:Subject:From:Message-Id:Date;
	bh=5WnjRJI4bbtpWBvfAMPY9bSQAtU5q+SjlR+rHK9Sxz8=;
	b=XO9vz2c+tLNBnEy5NVbR1Bj63ATwlO8DFMD7YhM7thasjeOnD2xxQTHxvdEkMrFn
	hEsbuKeq1C+iASaegJ63qbOyAG0cqBmaN4kw7QUySDq4svyrKgFYe24h8ifBASh4WFo
	Rh2XG3rUDby6DTpgUScSiORqb0Rsq7lgzpEdzRjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645805185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5WnjRJI4bbtpWBvfAMPY9bSQAtU5q+SjlR+rHK9Sxz8=;
	b=gFnMHjXXCjYhOBaUpM/Pdy7zpr8xjt6MPG+7/wJStl4DiILYjORGjKD3LbGDiGPC
	QpszbUkAmoso8X4zIFeWsjQjuyN7yCFC1BDWiHnJ0GhxgmXa33C7CBzDnSLSnS7HJEU
	40zJTXAJDQidjJnzB1kgc/Dwym7eFJNpPl0Zwwr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31a2271c-cc97bfed-f34f-4991-b154-69ec092be03a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbfe3f9f3b90c5c4b0f0ee2ab9df349922472448a32ed0b60093495a1b8b2cde
Date: Fri, 25 Feb 2022 16:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645805184
