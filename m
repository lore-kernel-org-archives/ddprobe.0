Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B2B440F
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660002653;
	h=To:Subject:From:Message-Id:Date;
	bh=MoFqbRE9N0J1PKCOMijBSgiUj+FUkPcQA5tNIp4CRHA=;
	b=cmbS7aysBzxQaJGRiy0JTqLYoTMxbtZWcBxkh7LhOMkx5lb/N1YPywJvpZ9xJaxe
	6Hsgca/HTIWwrC4LK9shj9dKrd03ybtT5PjkvmDeqB8ma/xXoSdPluruNY8hvWlRZVU
	GxDry6DfRMqm5OArOykUeqSJg4dcGJWL1tV+hs0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660002653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MoFqbRE9N0J1PKCOMijBSgiUj+FUkPcQA5tNIp4CRHA=;
	b=A74gdupoSOCoUk05/ozr/j8HvWRegqDVuUuEoU5xgxdPLIxvyPmLtyTK04e7rXD7
	z9ceTr6uNpUfsgiX/qyHnI7GBtnjZsVWd1tvNGxLkVNT4L8GDdxkZjoaUWVbwTxuzw8
	wcYPSA0xlYh1NmT+4m/e9Hr8cSeiVnzDLDIzkhKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827fde51df-dc373426-2a6a-4643-af21-946d828528b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e056b17c0ff2bfa1b6b656897833e2da3c690d1dda3cf957c08474bda098d6a3
Date: Mon, 8 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660002652
