Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598F97B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 00:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655597279;
	h=To:Subject:From:Message-Id:Date;
	bh=buz+c2BQNRDG6n5rlL6vOHGWRnWrxWvUGvA3ioiijIs=;
	b=Hlo6mGykStTFwbQDew+nDd8SmsrCdhiUy/mokw6C5ZwpK2/axjNeyTm9I6OKIRSW
	/bCdooUuZA5Zo7S3S2bSFDkNzqcXwh/7AVp4z7BDNUjAtOMJ0b/sboeRgFlfpuBGPCq
	MUMBKdEi+TXwlfbxlmERsc3jbuR9kU+r185bk0n8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655597279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=buz+c2BQNRDG6n5rlL6vOHGWRnWrxWvUGvA3ioiijIs=;
	b=WCUgqA8NM+ThfkATK/C04aZmiU6RR0PdVnJRev3PRlS6EWx1gPMuf6lZ4QUtc/QJ
	40eByiIPT9mvHTwEfl/+Em3iNI56+i+WsrKR31tFZt5T1VevP9vpmNi+8vVlsD2Jq8t
	ylgR7GLcp8FBsrW2wwOiyxIMg1KVB+K/MkLp+cDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817949a7e2-a69b5220-9ece-406f-8f77-ae61c960cdf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c5cc544793d99bd76192fa76e2653a675a0e432eed703967df715b6fce0fc05
Date: Sun, 19 Jun 2022 00:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655597279
