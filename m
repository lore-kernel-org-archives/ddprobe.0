Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD943D66
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 23:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653261959;
	h=To:Subject:From:Message-Id:Date;
	bh=6mdc5nJsAH2ALv9LMvGOlOQCRelOJygX6i7PIkQ2Uiw=;
	b=aDvKaHUk8zV6QvbxKlVLVzXsx/Lnz2k5Q4PjvU751uY0XSQCuRm4x4AcRp77h69w
	9BDK7olVm+JR+HQ5y0eXEeCDUpi4VYiWVd2Xz6Hv4REsBTujY2lWeD0AYGYYYp8LR+e
	eR83bSENbj1ZDqTl0RGGfrFYulsAMwwKiyKEPsms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653261959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6mdc5nJsAH2ALv9LMvGOlOQCRelOJygX6i7PIkQ2Uiw=;
	b=eG6ngOI53h0yZJS6oJ/UPgmC2hmcjMJo005TIxXtb/6efJK+rbiD9OzYcJJ662qk
	dc5pKfmwkTSIEBy6dfa0xuLmspT97p7HuI1VwEUOg10rfXiuE18Y9z5BfbEVQYPVzEN
	3Y5EJd59b5PPeq4LblQljgCHlrwaiEyqYCYmOxgs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ee178052-e2ad1177-0caf-4af8-9241-5b220d0319be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad78b925419ade12e8131ba6f8c031f4fc421deabd4d05826d5c027a18e22b76
Date: Sun, 22 May 2022 23:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653261959
