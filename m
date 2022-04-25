Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E57333DE
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 22:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650927538;
	h=To:Subject:From:Message-Id:Date;
	bh=Cu3P9pyMLEcImk7SHy3gsYj++xwA9ekU2faP33JuJSg=;
	b=GVLnxYFK7fLIUgqCEwv1/186h/PSo60gVVYm6myHVnY3aqSuYzPpFjRDchjclZ8k
	THtXFuw93+bLjn6srPb7kOejT+y7bXQesEAnAoIzU6qxwbIydkdioWeBD/2eOoGs2Dg
	KsPUfgfZ2D0ht0jgmf+hKEvq0wSnuecAi7exJSNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650927538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cu3P9pyMLEcImk7SHy3gsYj++xwA9ekU2faP33JuJSg=;
	b=SP0TNESAP+mzCyoREkFL+omyh4frKEJueZG8yuXkCPIxSsIPuQAtVERdNem0KB2x
	ES9dVUg2YozhHbBSJVQKcFFK4q3Ou9HVA0MeVxFriRHnujcbSTw0Hz0nlMWjr0IEJyE
	8dGBMYE8YQSmf9STtf8euUCHpFhLuErM+tiZVl0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018062f31091-41f0dbce-289c-4d74-911e-565d1db237b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec228475df33314d8d028a5188022380802d7ae4964cf2c88b3e5d7fd2f6201d
Date: Mon, 25 Apr 2022 22:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650927538
