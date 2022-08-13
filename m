Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5152C23AF
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660414252;
	h=To:Subject:From:Message-Id:Date;
	bh=l+QJzMNKVF420E/oPkwLyUh/+xuyXCjH/1F+O43NB+I=;
	b=ZVj1GHTPFJoNHUwXqY8eIxhUgs6jW95kbu7tpW5JBUEl588/OzHJYpjF+aeSHdQ3
	DqQC0B4PRK5Vm+Wa4lr2iZ66F7wk7SK4wWSz30r5oyFYGLVOw5Rz4aF741J61PXWz20
	Opr7RSPpf9TAsiVoGwXvaBpdddLtEh/1aW8J3KaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660414252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l+QJzMNKVF420E/oPkwLyUh/+xuyXCjH/1F+O43NB+I=;
	b=jm9sc9feL8J77bEzKKl+qkQht5V6TEJ4V9r1dpO8mi3fng8ZmlVo0bOAXykW1YSM
	j6Bv+cDboxucE4acMFqcB5T0HyI0H/SQggelRsk6D/tcLFPK8e2Cov8ul4gEcGa1C5a
	vrSUONGsQDhnPP45Rl72gRyUe0XR8e+C4YtEwLUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829866d604-38cdf833-6b9f-4d90-9b47-7111873d2794-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3faf9d8adb5bb587c7344e8061685fbcbdcd9aecd77570a1293c7c059c4393d6
Date: Sat, 13 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660414252
