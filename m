Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09157E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661326853;
	h=To:Subject:From:Message-Id:Date;
	bh=atU69FA1TMf9OdKHjt+cBqUL1dQjtAq1coQn8ZjboVw=;
	b=Db2180tr64k4IoQxXlSNS5nOxwYmvhD+Z7wA9mQdBrJTxXf7ruHCNbSbZNUaHtpr
	7AeQCLHIW4xPExGaUDL1HwT8qtcQWj5xIlosaRlzDAfWWr6bKmDMrRMVGnrZWHZ26EI
	h0FHh1xWtZ5P57qSYU1S/leoxw1sso+FJe7TmyjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661326853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=atU69FA1TMf9OdKHjt+cBqUL1dQjtAq1coQn8ZjboVw=;
	b=KHfu/kxMf0yak2L7XtijrLtio0LXUjjenKGsGJ9G9bwtR6Zi3ukUWz5/k0eboHZJ
	YlK5+1RH9J68jRnDVrMloItrfwTaLjtwxxQMiRXjwohXPNdNWgX63UT6f9an6sGfj4E
	zPixW9uujB7vEj2kdkOXsYtFXgB16dmLHV//5ZTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cecc01c2-7f489433-e525-4ed1-a39f-034440cd1dda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 202ba97e15840d6033ec86e03cfee52dd049fbd81c8c6dcf5fed081e624412ed
Date: Wed, 24 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661326852
