Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E098160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647715884;
	h=To:Subject:From:Message-Id:Date;
	bh=GHGCNOvuSFIXk4JLJ2SnJ49PWh4j/Gvs5dYZEe68iyI=;
	b=e+d92FlvKHeiIDpDOZRW+TsIBEYBwaoHrgKOw813jQPeSEEX8l0jE1x9CBwc/1XW
	b1HHDb0kIm2mFiTStBjtOqGcha8beWFfrbmEq9y0z60ghp6iW8sIqgq+XNspZ+5Jebe
	KEVE6eHXhRWjaggZMD2Vve+SZQa0kiCSNVny70d0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647715884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GHGCNOvuSFIXk4JLJ2SnJ49PWh4j/Gvs5dYZEe68iyI=;
	b=f2fayfEnUU3F5EtFQko6yeRG57MbBXT6YAFr3yK+m0w+fSIZpr9Ne6OeCtvbwBJR
	eYY9mPpV49PWD/AmZvAkP/gfbRDdy/V3oq2yDR3KWgRZjZ9qXwfPE/jU/eJasuef6xR
	1VO4j6RviaaYQPUpYzkq4LzVDhkXsuN9gPW1vRFQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3851eca-af1f4b63-49fc-4a4e-bc3e-f62dec9f351d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dafcf256e3513e919892c34d7a70e304072bcef1b0795bf33f32b6cb7b41561c
Date: Sat, 19 Mar 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647715884
