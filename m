Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0537F187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645020385;
	h=To:Subject:From:Message-Id:Date;
	bh=/Z2r1YvN4+YTL0SsH+mSJ+DZ+bLdsfQ9thEhDAVqVVA=;
	b=AALewSqLb56JsfseNahCXsgV6yfTOhjsz7xmJ7w4Cz3hAhqvYRdMlXXy+8TPwlF+
	CJTN778vhPnHntz3eCswn6AJEZXguKxg0OkQSA6RR8qNagvWPKRn4v14ZKGlBOA0byr
	5Rpsw6+3AUCHGrRDXjspKBwWJ3xARd0apvHYD3pk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645020385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Z2r1YvN4+YTL0SsH+mSJ+DZ+bLdsfQ9thEhDAVqVVA=;
	b=NuRCwtRJnhodQXceBZYMe6Y8o9nikLkyJu/fQNjr+WeiLothhcqaMAeU5g5Crhsm
	8RRmlfXBwybAQcU6+4Y/Ob2NKk2FQ9xP0cQ7jZHcnkxbnEhHDlrlq9UglnVAUthZfFM
	7h+XgNZmYKkjI3yibPB+VOLbMRMT7CFd1HJrYoF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02db0e70-c9f33d62-b133-4636-8c6a-d27adce2adfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 881c619cc8c7601f4f5c17830269dab359b0728493e178c48ef0be69656325d6
Date: Wed, 16 Feb 2022 14:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645020384
