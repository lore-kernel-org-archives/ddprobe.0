Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393312F33
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659819652;
	h=To:Subject:From:Message-Id:Date;
	bh=TwEfA0aOw0Bq50La7n6QBHah14lHQgTGrkzkS6R2i/Y=;
	b=ccFDDWBrh3cOk3AujUp4GC1EjcnZ/IARjTXC2ypGUYaWy9r7y9n8JHtKqfjdEHl9
	fdqBU8Dh2rDhciNdRHMLlPcR/y5yvaqVMKcoQSFFRgaS0t24xF0MdR+LnvA8bObkK3w
	n9gtVnH43Ab1ajWkiDUHqzgJeWOjxxjTvC+Duesw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659819652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TwEfA0aOw0Bq50La7n6QBHah14lHQgTGrkzkS6R2i/Y=;
	b=EBJBbIMMZ1aAJJ6ljo14hMbYz0ZVhPOOn7a3Jv12uWwhPwXZTsvw3HcFeQIKipbO
	PvFFS5ziOVxBOZl+WryZ8GPbJ1ag3yCicy69kg27u6EcL3GxtvZCHp19iDO0lc72CQu
	+XhfF7RN27O9Hn5EV/bvGY+OlOAmLMGe7+VQaTbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274f5f62a-4015b4bc-d500-4d30-b974-7ec94c321c9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5a8062872205b4d5b124aa73de2bd9d923e3f5edd2e0a329c91159a6b16bb64
Date: Sat, 6 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659819652
