Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02BD7D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 10:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644748218;
	h=To:Subject:From:Message-Id:Date;
	bh=UBnuX/81rMlSqSXLjte9CDYZrU6O/AGor9/dw16zg8I=;
	b=HrST+H0Qu7VU2i1vH9q9gbG9pKEymX8VQvHo1qf2DjqzT6cZ2ekbwLRDMLi9Fu0w
	PI7Gizpk8wt5SmgImSgFAwscuKzHtzKbq4lgWn+MAEld8EE16sRg5hJhlJTjuMoYgs/
	0/YAo+XIxJpRt8EI9RZrK1vXrcaE/lWbcbCRrdaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644748218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UBnuX/81rMlSqSXLjte9CDYZrU6O/AGor9/dw16zg8I=;
	b=TevcbjEtUNyk/u4vyy25NJiYSxKOol4HkRkrjM7hkFrYLzUf89ck2mEjxbx2ZKKy
	PyCxW7nNFBaMNp53oTHigNGqwhXXLGZlc9L+q+JA7Dl82udKhnTnDaX2ii6vs9r1dQ8
	MDeKLILv9zhdlkMI7JEeWNCGG1VoBRIMX+Wfo0Fs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef2a21f41-32754f70-86d4-4e57-a5ce-e460c1b5514c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23b8d53816b37fc81a0ccb7ff2ec731adbffd6b1a4b2b552f043d4c27ca35017
Date: Sun, 13 Feb 2022 10:30:18 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644748217
