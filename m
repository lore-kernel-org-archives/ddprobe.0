Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3D34C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647674784;
	h=To:Subject:From:Message-Id:Date;
	bh=N7L6OaJG9M17GDbakA+DFnN6bkwxmnxtrKUbLVlG14w=;
	b=dHLFMycqk9l1jK+PPGXwju9oD2988YLpLjk1hqlQ6DBr+u1PP3D0CjPmMzxKgahz
	vfZPwgB6hUu1JYUGdBmIbMa84pf/6N05pEsrmDdMlWbgfCKkVjM1DperVYmS7zP/gsq
	ZhLohEhkJgfNMk8GsLXiofk/G2QYxE26C5oG+K48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647674784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N7L6OaJG9M17GDbakA+DFnN6bkwxmnxtrKUbLVlG14w=;
	b=bqc36WfH0nM4/xDXbJLeW9TDS3mPA/ylN0vnd0q1bK3PYrBgvHOYPml9vfMPrS6q
	BfdG2u/79RjmP3gab6lKcLIQsz/Srn1npn+QgtsoB/WIubD1ag5EB1IXb/uLz9pmaV4
	QQjN86igJ1XiFn2LsqViuAz+4U6+1UlM3/j6DztQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa111fc67-e653c30f-16f4-4c1f-8731-54c906bd0b93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c74655f3a45024f7eec28cae997f2ef7ad72b9a2cf57799fa104a3e7f4a890b4
Date: Sat, 19 Mar 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647674784
