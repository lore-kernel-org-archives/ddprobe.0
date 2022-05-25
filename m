Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF320321E
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 23:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653522780;
	h=To:Subject:From:Message-Id:Date;
	bh=0w3l9VG/J76rXBiEX7CWRQlm/rS6Qt9VdCJLIyhfhfI=;
	b=B9Q6qBqNlk7c/iASehClLrTqa8MO14nwuvjuGD+P2Gy2hJq8Ua6Ls1tTiA3mvxMR
	yFsAUcUOnzPx5Pm5KYpEsAODOHB/dRGU9oje6UHTyepGRA4/EJbQN/HNPkARkh7n40g
	StsYMUaGCF5M1AP5cRXebF05bNNdcJLalKDsIjS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653522780;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0w3l9VG/J76rXBiEX7CWRQlm/rS6Qt9VdCJLIyhfhfI=;
	b=JlvsrwmjJer21dQCh6v82h7PbKdVQlc8Z3KqmhbQpBcYq7qE23hugDHJJ1NBHFpp
	Ztyp61R0Pnqg+8i2qC5CySMj50k0nN52jKHQXS3XjP8ETOfr1btNM58OCQ7haEwDAGR
	RDsaOGbDrcLNPBiVdgAmgfuYN8QsNGvTZDeqyHxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fda34cbd-8ff21d98-99e2-45a2-8e8e-60c43bfe466c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1193a0cb4f03b208fd0ea6bf3bb4ecf72c380ed3e573b73de7e798e503a7ad3
Date: Wed, 25 May 2022 23:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653522779
