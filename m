Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80835186F
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647262885;
	h=To:Subject:From:Message-Id:Date;
	bh=AJ59iKIOE/NPtstWmv37q7aoYABKKFTveQWRM+F7jzM=;
	b=YY0ZG47rxpVESzYmFdksCdTJPzr44tfe5f4R4DIZ8cpetc5HbtKZ72JjnFU6e1CC
	Bd7Vt2YoS/Es5LCScjc2ASUb0wSFAo9k6CL5bEz2N6kCT4lIcqKH4L+7NPPHw31cdcz
	eUQcCEKMz3noH8TN8N8gp7dA2Bldz8svwpZSMEqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647262885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AJ59iKIOE/NPtstWmv37q7aoYABKKFTveQWRM+F7jzM=;
	b=Bb30jEV3ICaA/L6zSzaSgLU/pqbr8j0mNG2zIE9N3Nx+fzqiqXw7oansy/4mKI3N
	8JW9eZnOVm5y4jUNwV6lCRjsRcPj2pJADAI8HJ4v9yX+47kHfUtj2/C0YiPR9PDCmgs
	Cwzfz7E2SaMTidyQVgugqW43Boq0d5fFZyGramhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8884e3d2-a229fd45-fed5-4e4b-a341-d76549ee2eb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fea9e3601a6ce68c434976c9a7d40563e884a275df8ad405fb6e26342cde40d0
Date: Mon, 14 Mar 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647262884
