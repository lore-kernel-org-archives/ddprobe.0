Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045B429A8
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 18:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653848399;
	h=To:Subject:From:Message-Id:Date;
	bh=PBMygn7+dcCjSzarx9+PEjTdrK9AHQdGnuQlhtj9aic=;
	b=UpBVO6GHbRQSXHocrz9+5RsSzsImBTKowZdWmWGgrwE4hUx+sy8tY+jxJ/z1D8ik
	gmMXE3xDAVAI7ltpAZxCl5MfIeYZRPMc0+3ANbe8x3x1cAWTssSNW2OiqhKcrQt/06Q
	2wQyvQK0RpMJRiodkh38m7IIcM+AL5fbsGJLLcAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653848399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PBMygn7+dcCjSzarx9+PEjTdrK9AHQdGnuQlhtj9aic=;
	b=YAk10O3wW3JisV7lpwOaftr8Fn4xdSBarhGkEwSzUGSanJbt3RIUc+Qb20WNZJs7
	/iDxSLhhSBcwTLgL/v8G7I+zp9NFA5fVKGn0Qahp38G7hyBTjmtNXHyUFdg387RfrDw
	UNcdEKev6PirGtZRXp5bDUqDKB6W+foQ7Dh9hpUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181110bddc1-d1cfa3a7-5522-4665-a091-73e923f0418b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1ed3d70e6d62b76641682ef23be35465bb3eb8f31efee90849be47e93206bc6
Date: Sun, 29 May 2022 18:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653848399
