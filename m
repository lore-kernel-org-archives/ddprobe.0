Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E786D20FC
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 06:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653980219;
	h=To:Subject:From:Message-Id:Date;
	bh=AW34uynqKWEVo83MlpS0lmKxkdV109kMVw6kSHv0g20=;
	b=SAM8q1Bo+3TDp03cpZOJ723X7MuwR5sSnb/8hkYPdSInRoHTDubP+8FDoCbjEGCj
	mNRodBGd61QwqnQd2j1ppviQywqMN5wbJfdC9GOyi+hfpQazi80fW8M20cBbxpYDVBJ
	YBr6vrOQvF+yswvqAGFwT4oG9fO5biJOilyTLIN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653980219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AW34uynqKWEVo83MlpS0lmKxkdV109kMVw6kSHv0g20=;
	b=R2LQLykpeaRDa0e3/gaKQAvf72yKLnLfKmmdPQWX1RzNx0JCai50QJtVfpAmvzyg
	lXLfpT8g0U6He7e2XYAkNtqiri1s3StNzY3BCXQHyGdopnYP6Idh7UKdu+Hoekw7wDr
	lW9htCVL0zNpZqLI5I7fa86HauijaPZAeRre5yFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018118e747aa-6bda79f4-7ae4-4250-a39e-feba3e2cdd75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29516fba80be914fd346d410f2afb594c4d68cb42e6878e069da654d846e339e
Date: Tue, 31 May 2022 06:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653980219
