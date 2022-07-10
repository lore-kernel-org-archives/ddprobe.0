Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEA5A52
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 07:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657436812;
	h=To:Subject:From:Message-Id:Date;
	bh=XMzNBKQa3ctk/ughnURLiymkJXnux3eDa/XKKX1C3DQ=;
	b=JbfGWyXSrGRWYWV6ZcAAXwZLUw7dAyvfVUMbMlQXLpQXWSqloMR+XtYU3tasNHch
	bM54S9mJOTpfgKn0NXN5XUnluFz1nqsH2d+seKbJboudCEW3Bu7AfajQOGK5+MBHXz1
	5xKWFZX5KmkbT4ixC43/YlkKwVCcxOCQfvBfzcnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657436812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XMzNBKQa3ctk/ughnURLiymkJXnux3eDa/XKKX1C3DQ=;
	b=J6hGzjlM/S2DMdGZapZd1tXFyvCsOmJ2AoFrOF5Yii8w9XGvdIBq7iIKrlVy0Ukh
	VaAcLnrWMwUfqyH8KEhtcuKJD7KEKhl9U/C+UKcfd4SXb2zyw0ofVddsspT5ZSc18Gu
	TidKGiP2XUGeQKZfgmgYlDhNb3Cr2oYkdvptmW1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e6eeb47f-7be383df-736c-4d7e-bace-f8d295d3c532-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a136c653ea7d1bf462cdc03f9278d7f7d00a82631f7a3157c391258061ef336d
Date: Sun, 10 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657436812
