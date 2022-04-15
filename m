Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E9117E6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 07:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650006118;
	h=To:Subject:From:Message-Id:Date;
	bh=5ycCQU7WKBi+2tlSQWSr2JFLkbFIsH/s+fbBSUiVG+8=;
	b=LD/dIi7/MdBPkkM9WIIoULapCuddRIB3jv7qMo0QDE9EMa+5hGyCDNmWLi23crjR
	aIHf6n6g1iI3qBG/XWqio65nZwdaSgKQnbaRT1eU9HYjYSGezNd/lZQIfzSmXV509/5
	or43ZnRjH4xYzQN6MMNKDKTRybn7iQ7sgv6iGMYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650006118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ycCQU7WKBi+2tlSQWSr2JFLkbFIsH/s+fbBSUiVG+8=;
	b=WTGtiggULCF+UE0EBD2Eoqi6tLVvwolLO7qw0x1rrha6dIZwqSclIyqHUaJeEY9K
	4TCetQC04axs5NUfsDrToa+sv2+ucyKbRSQujXl/7052PDZ43RQL3qxfyG5VGdgYkLA
	Vz5syOS9ZBX4p5w0xOe+g9OIVcUDZ3Es82sX7zMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c074f8b-37101090-28f5-40ca-9c34-b1c49b491931-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d73b1c08fdefc4fe8dc9f87cb5e49ececb56c2c9f0cf57dcd7de04fc93015b3
Date: Fri, 15 Apr 2022 07:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650006118
