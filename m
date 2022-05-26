Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0041389
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 13:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653570839;
	h=To:Subject:From:Message-Id:Date;
	bh=Ive6knj7A6hnIX87FQUwZo8e75+wu6slHQ6P+pYx33Q=;
	b=RMLtq8IMYnKso5GiDlDDGWHjytH+dnbbDREbGlOtk8o/1+aHNvk0XPlMg5STHnbG
	AMyKBsv3zQFK7lyR8WiMvaGMVmmYhPsUStnhilhW5cwo5ooYGjeIvpteHhRBQU61SPO
	fj5DJ2xPJ8tCyoq+PoMtzpIzW41Gpu0j66IpFMT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653570839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ive6knj7A6hnIX87FQUwZo8e75+wu6slHQ6P+pYx33Q=;
	b=CQtop8JKBOV9iTpiJkZTNwXppcxUTWMNHMrBv1H18ruKMCRzL7WTyQJ+Nfy9mtVr
	VugwP4tvIbJwDusNEobB7qpkts5JhzhGwxW5C9JT/mUuXDW/cPDNfsx4xRqF87AuVxW
	of8Fp1QWGTqIsN1op0BWF5ztdGft6AejUTSBNoto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810080a2e1-87da1bf3-e460-4eb2-9eac-addb32645619-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a6b42f94b7f9cd269b214e1d53f1f469d57dc982fcd76d6b23fd47022b1aac5
Date: Thu, 26 May 2022 13:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653570839
