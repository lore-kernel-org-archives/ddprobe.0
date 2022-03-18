Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D58915AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647570684;
	h=To:Subject:From:Message-Id:Date;
	bh=iRey65MnjLWF+QDPkJUxCvHOaZ4G+afsVDQPCCcohqg=;
	b=lc1smIYVswXLjmfJ0AiikVksTF4o5IyE28eyGa7Phg95W1okWeaNKT+ibfMA75uf
	qc7cbDyvCk0dqyKw8rCmj8tjTnEBt+nm4tain+UEA+v/vp7VNxniXFYX8zme4+WYZUq
	HH30M384W4K2tHAY470ckaWDi5uQF35YiVycbrmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647570684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iRey65MnjLWF+QDPkJUxCvHOaZ4G+afsVDQPCCcohqg=;
	b=My0mY7prbL9QU57Zqq9IHyO9aiqu1C3EqqN+6S31TMAn4HFAKA3PAcI0HJIrqBL3
	FQe/jcjyedm3F42Z15U3xwV36REE26oZ/PVncTUsImcZ157QgzIKEIn6gM3uJRyHxVK
	4CGJTo7raGM2LkoVyeI5kiFjhvoggDzb/oC7vFwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9add8b63-fc262d4d-eacb-4b4f-9bb5-281256035d00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5413ab9d678c774827e2fc0054ae36fc18b4539e161d03c81ccbefe9bc4e497a
Date: Fri, 18 Mar 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647570684
