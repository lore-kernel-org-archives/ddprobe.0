Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26505ED1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 09:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649583118;
	h=To:Subject:From:Message-Id:Date;
	bh=YI3xc4J/xUw1MhxgrMsuoH+uLx7U823JQtyrL116xCw=;
	b=bqmlc5VRUzQksotb/KSGv0wtjd4+Kr5B8A9D0SOzkr+5vbbFlK/d6d8MjUzVBvnb
	G7Ffpa0Sf0fIHD+vtLKbJ3iTSu2H0ATtSo2jdrWNt/iUn4WpDR/C/yAoupYK3Nkg4AC
	MqoN/TxA922Xgru43Dz1iayGQ72ibTAg863Z8thU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649583118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YI3xc4J/xUw1MhxgrMsuoH+uLx7U823JQtyrL116xCw=;
	b=fPRgkpaShUn17v8qXRid4uWmsObAg0VBoIaLnSG5JaW6mkGuGDE3Z+cPg/ahWo0y
	QKu5ATcl1fKrE5A5KmYia9ZG+x/p7l4O74PbzGxkpzwd3dlMHv78QLDWcrzFZv6jC+y
	2VJ/TA5lfsIEJR9/RRyo5Mq+a8t3Me90Bf2UFv6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018012d0d842-b122be6b-eea9-48c8-96fb-dd3a20a62794-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfe23fda897dbcf888893262da83f8a8bc4b9cb65e9f31da3109c1061bfdb6c2
Date: Sun, 10 Apr 2022 09:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649583118
