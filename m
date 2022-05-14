Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07ADA62B
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652520479;
	h=To:Subject:From:Message-Id:Date;
	bh=/erz1WspUaLmDnWqwAE7FuvYJLlfFBTLpSMAJIR+bYQ=;
	b=Z3gYVCJ4zNnJOgOIL4VgIcuCfs7+31AwzJDgczj+TcZ4XG4gXSrTnSd1AXFtUazO
	1uxwk8/9mn5+Jk5o/Spf9BpGZYbTDNGBe/6+JR6KBCtB/amKDiVMb2h3qwQrgkm+wMu
	BqWoZEqd2rWC7SH/ucUC7BXnQa5oqYn2fnMorcZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652520479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/erz1WspUaLmDnWqwAE7FuvYJLlfFBTLpSMAJIR+bYQ=;
	b=VxQUDcf6CcoL4Fgvn9Aa8uk2trWma7XLIdgSoyi/cEnYo57UJuW3x8bjWcjxD3lS
	6TfpFngvjxUS316+TDZ6o47tLoccq4OIKFj4pmEvV0FZ/RAZ7XNA3zoZ2D787+U4oLL
	T0k0JWINw9TejC6CVrOsqcb/9/Wr+nBIAKs3F1wE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c1e56a18-bd4f69c4-6fb5-4f61-87ff-6a362deac75a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11ce0ed2ad3930c7bf846a66e544d8552528b05231319d21f57406cee78b570d
Date: Sat, 14 May 2022 09:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652520479
