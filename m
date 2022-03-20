Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8370133F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647791484;
	h=To:Subject:From:Message-Id:Date;
	bh=T0NQvHDd9xrVbHFdE62po0bA2AbNHUhXk0e3yMTWlfM=;
	b=ErAcerg8QcGtWTAsVjYQVGqaHng0aVKRMpDh84SF7sA2NYSg70bJYBv7pCPTjbTL
	tTt9klSQABSo1tPO0DEsHgYZOKD4in2V987e3/rLSUo+dJmOXGACtTdXYPu1xcSoCV4
	qNSH8mNbXpByk9o9Ds/JO6jT2YGtoSjBWcgqiBN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647791484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T0NQvHDd9xrVbHFdE62po0bA2AbNHUhXk0e3yMTWlfM=;
	b=k3z8mE3j4agdnz+/LcN3R5/LTuAevyCv5wu2xpXjnoVaAeKGQTvmmD7LgYhxbLC6
	ERUed4X64ELjqO+vSss3V4eSF1vwKSbK1Vh4449iAR4JfX4x7BJ3juRML5cn9Ol1jGR
	1G1nRUsVWRv/kL6aLDg1UdyCDqb7whPkn0KaUa8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa806af29-864a3574-4481-4c67-ac33-81b042d49f12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a038a4625d3f5a71a98274050bfb2366c02c430926a560179c210822cc6d764
Date: Sun, 20 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647791484
